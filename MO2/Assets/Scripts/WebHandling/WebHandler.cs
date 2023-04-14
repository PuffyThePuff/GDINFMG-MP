using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using Newtonsoft.Json;
using System.Text;

//TODO
//present data received from GetPlayerScoresRequest() in the game scene
//create the reset post request

public class WebHandler : MonoBehaviour
{
    //public readonly string BaseURL = "https://gdapdev-web-api.herokuapp.com/api/";
    public readonly string BaseURL = "localhost:3000/";

    [SerializeField] private string groupNumber = "0";
    [SerializeField] private string groupName = "Group 1";
    [SerializeField] private string gameName = "Handy Manny";
    [SerializeField] private string secret = "supersecretpassword";

    #region singleton code
    //Miguel's really cool singleton code he made in 2020 and probably still works
    //put Singleton = this in Awake()
    private static WebHandler _singleton;

    //getter and setter for singleton
    public static WebHandler Singleton
    {
        get => _singleton;

        private set
        {
            if (_singleton == null)
            {
                _singleton = value;
            }
            else if (_singleton != value)
            {
                Debug.Log($"{nameof(WebHandler)} instance already exists, destroying duplicate");
                Destroy(value);
            }
        }
    }
    #endregion

    private void Awake()
    {
        Singleton = this;
    }

    private void Start()
    {
        //CreateGroup();
        //GetPlayerScores();
        //SendPlayerScore("BOBBERT", 9999);
        //ResetPlayerScores(secret);
        CreatePunishList();
    }

    public void CreateMoveData(string characterName, string moveID, string notation, int damage, string guard, int startup, string active, int recovery, int on_block, string invuln)
    {
        StartCoroutine(createMoveDataRequest(characterName, moveID, notation, damage, guard, startup, active, recovery, on_block, invuln));
    }

    IEnumerator createMoveDataRequest(string characterName, string moveID, string notation, int damage, string guard, int startup, string active, int recovery, int on_block, string invuln)
    {
        Dictionary<string, object> moveData = new Dictionary<string, object>();

        moveData.Add("moveID", moveID);
        moveData.Add("notation", notation);
        moveData.Add("damage", damage);
        moveData.Add("guard", guard);
        moveData.Add("startup", startup);
        moveData.Add("active", active);
        moveData.Add("recovery", recovery);
        moveData.Add("on_block", on_block);
        moveData.Add("invuln", invuln);

        string requestString = JsonConvert.SerializeObject(moveData);
        byte[] requestData = Encoding.UTF8.GetBytes(requestString);

        using (UnityWebRequest request = new UnityWebRequest(BaseURL + "punish" + characterName + "/" + moveData))
        {
            //send what data type is in the request
            request.SetRequestHeader("Content-Type", "application/JSON");
            //add request data
            request.uploadHandler = new UploadHandlerRaw(requestData);
            //create reciever for response
            request.downloadHandler = new DownloadHandlerBuffer();

            yield return request.SendWebRequest();

            Debug.Log($"response code: {request.responseCode}");

            //check if no error
            if (string.IsNullOrEmpty(request.error))
            {
                Debug.Log($"message: {request.downloadHandler.text}");
            }
            else
            {
                Debug.Log($"error: {request.error}");
            }
        }
    }

    #region create punish list
    public void CreatePunishList()
    {
        StartCoroutine(CreatePunishListRequest("anji", 10));
    }

    // player's character and the frame data on block they want to punish
    IEnumerator CreatePunishListRequest(string characterName, int moveOnBlock)
    {
        Dictionary<string, object> punishParams = new Dictionary<string, object>();

        punishParams.Add("character", characterName);
        punishParams.Add("on_block", moveOnBlock);

        string requestString = JsonConvert.SerializeObject(punishParams);
        byte[] requestData = Encoding.UTF8.GetBytes(requestString);

        using (UnityWebRequest request = new UnityWebRequest(BaseURL + characterName + "/" + moveOnBlock))
        {
            //send what data type is in the request
            request.SetRequestHeader("Content-Type", "application/JSON");
            //add request data
            request.uploadHandler = new UploadHandlerRaw(requestData);
            //create reciever for response
            request.downloadHandler = new DownloadHandlerBuffer();

            yield return request.SendWebRequest();

            Debug.Log($"response code: {request.responseCode}");

            //check if no error
            if (string.IsNullOrEmpty(request.error))
            {
                Debug.Log($"message: {request.downloadHandler.text}");
            }
            else
            {
                Debug.Log($"error: {request.error}");
            }
        }
    }
    #endregion

    public void SearchMoveData()
    {

    }

    public void SearchFastestMove(string characterName)
    {

    }

    public void UpdateMoveData(string characterName, string moveName)
    {

    }

    public void DeleteMoveData(string characterName, string moveName)
    {

    }

    IEnumerator DeleteMoveDataRequest(string characterName, string moveName)
    {
        Dictionary<string, object> deleteScoresParams = new Dictionary<string, object>();

        deleteScoresParams.Add("characterName", characterName);
        deleteScoresParams.Add("moveID", moveName);

        //turns the dictionary into a JSON string
        string requestString = JsonConvert.SerializeObject(deleteScoresParams);
        //convert string into bytes
        byte[] requestData = Encoding.UTF8.GetBytes(requestString);

        using (UnityWebRequest request = new UnityWebRequest(BaseURL + "scores", "DELETE"))
        {
            //send what data type is in the request
            request.SetRequestHeader("Content-Type", "application/JSON");
            //add request data
            request.uploadHandler = new UploadHandlerRaw(requestData);
            //create reciever for response
            request.downloadHandler = new DownloadHandlerBuffer();

            yield return request.SendWebRequest();

            Debug.Log($"response code: {request.responseCode}");

            //check if no error
            if (string.IsNullOrEmpty(request.error))
            {
                Debug.Log($"message: {request.downloadHandler.text}");
            }
            else
            {
                Debug.Log($"error: {request.error}");
            }
        }
    }

    #region Group creation
    public void CreateGroup()
    {
        StartCoroutine(PostCreateGroupRequest());
    }

    IEnumerator PostCreateGroupRequest()
    {
        Dictionary<string, string> groupParams = new Dictionary<string, string>();

        groupParams.Add("group_num", groupNumber);
        groupParams.Add("group_name", groupName);
        groupParams.Add("game_name", gameName);
        groupParams.Add("secret", secret);

        //turns the dictionary into a JSON string
        string requestString = JsonConvert.SerializeObject(groupParams);
        //convert string into bytes
        byte[] requestData = Encoding.UTF8.GetBytes(requestString);

        //create POST request directed to /groups route
        using (UnityWebRequest request = new UnityWebRequest(BaseURL + "groups", "POST"))
        {
            //send what data type is in the request
            request.SetRequestHeader("Content-Type", "application/JSON");
            //add request data
            request.uploadHandler = new UploadHandlerRaw(requestData);
            //create reciever for response
            request.downloadHandler = new DownloadHandlerBuffer();

            yield return request.SendWebRequest();

            Debug.Log($"response code: {request.responseCode}");

            //check if no error
            if (string.IsNullOrEmpty(request.error))
            {
                Debug.Log($"message: {request.downloadHandler.text}");
            }
            else
            {
                Debug.Log($"error: {request.error}");
            }
        }
    }
    #endregion

    #region Get player scores in group
    public void GetPlayerScores()
    {
        StartCoroutine(GetPlayerScoresRequest());
    }

    IEnumerator GetPlayerScoresRequest()
    {
        using (UnityWebRequest request = new UnityWebRequest(BaseURL + "groups/" + groupNumber, "GET"))
        {
            request.downloadHandler = new DownloadHandlerBuffer();

            yield return request.SendWebRequest();

            Debug.Log($"response code: {request.responseCode}");

            //check if no error
            if (string.IsNullOrEmpty(request.error))
            {
                Debug.Log($"message: {request.downloadHandler.text}");

                List<Dictionary<string, string>> scoreList = JsonConvert.DeserializeObject<List<Dictionary<string, string>>>(request.downloadHandler.text);

                //for testing TODO: present this data on the game scene
                foreach(Dictionary<string, string> player in scoreList)
                {
                    Debug.Log($"got player: {player["user_name"]} : {player["score"]}");

                    //LeaderboardManager.Singleton.AddToLeaderboard($"got player: {player["user_name"]} : {player["score"]}");
                }
            }
            else
            {
                Debug.Log($"error: {request.error}");
            }
        }
    }
    #endregion

    #region Send player score to group
    public void SendPlayerScore(string userName, int score)
    {
        if (userName != "")
        {
            StartCoroutine(PostPlayerScoreRequest(userName, score));
        }
    }

    IEnumerator PostPlayerScoreRequest(string name, int score)
    {
        Dictionary<string, object> playerScoreParams = new Dictionary<string, object>();

        playerScoreParams.Add("group_num", 1);
        playerScoreParams.Add("user_name", name);
        playerScoreParams.Add("score", score);

        //turns the dictionary into a JSON string
        string requestString = JsonConvert.SerializeObject(playerScoreParams);
        //convert string into bytes
        byte[] requestData = Encoding.UTF8.GetBytes(requestString);

        //create POST request directed to /groups route
        using (UnityWebRequest request = new UnityWebRequest(BaseURL + "scores", "POST"))
        {
            //send what data type is in the request
            request.SetRequestHeader("Content-Type", "application/JSON");
            //add request data
            request.uploadHandler = new UploadHandlerRaw(requestData);
            //create reciever for response
            request.downloadHandler = new DownloadHandlerBuffer();

            yield return request.SendWebRequest();

            Debug.Log($"response code: {request.responseCode}");

            //check if no error
            if (string.IsNullOrEmpty(request.error))
            {
                Debug.Log($"message: {request.downloadHandler.text}");
            }
            else
            {
                Debug.Log($"error: {request.error}");
            }
        }
    }
    #endregion

    #region Reset scores in group
    public void ResetPlayerScores(string password)
    {
        StartCoroutine(DeletePlayerScoresRequest(password));
    }

    IEnumerator DeletePlayerScoresRequest(string password)
    {
        Dictionary<string, object> deleteScoresParams = new Dictionary<string, object>();

        deleteScoresParams.Add("group_num", 1);
        deleteScoresParams.Add("secret", password);

        //turns the dictionary into a JSON string
        string requestString = JsonConvert.SerializeObject(deleteScoresParams);
        //convert string into bytes
        byte[] requestData = Encoding.UTF8.GetBytes(requestString);

        //create POST request directed to /groups route
        using (UnityWebRequest request = new UnityWebRequest(BaseURL + "scores", "DELETE"))
        {
            //send what data type is in the request
            request.SetRequestHeader("Content-Type", "application/JSON");
            //add request data
            request.uploadHandler = new UploadHandlerRaw(requestData);
            //create reciever for response
            request.downloadHandler = new DownloadHandlerBuffer();

            yield return request.SendWebRequest();

            Debug.Log($"response code: {request.responseCode}");

            //check if no error
            if (string.IsNullOrEmpty(request.error))
            {
                Debug.Log($"message: {request.downloadHandler.text}");
            }
            else
            {
                Debug.Log($"error: {request.error}");
            }
        }
    }
    #endregion
}
