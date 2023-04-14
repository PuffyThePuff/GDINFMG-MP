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

    }

    #region create move
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

        using (UnityWebRequest request = new UnityWebRequest(BaseURL + "createMove/" + characterName + "/" + moveData))
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

    #region create punish list
    public void CreatePunishList(string characterName, int startup)
    {
        StartCoroutine(CreatePunishListRequest(characterName, startup));
    }

    // player's character and the frame data on block they want to punish
    IEnumerator CreatePunishListRequest(string characterName, int moveOnBlock)
    {
        Dictionary<string, object> punishParams = new Dictionary<string, object>();

        punishParams.Add("character", characterName);
        punishParams.Add("on_block", moveOnBlock);

        string requestString = JsonConvert.SerializeObject(punishParams);
        byte[] requestData = Encoding.UTF8.GetBytes(requestString);

        using (UnityWebRequest request = new UnityWebRequest(BaseURL + "punish/" + characterName + "/" + moveOnBlock))
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

    #region get movelist
    public void GetMovelist(string characterName)
    {
        StartCoroutine(getMovelistRequest(characterName));
    }

    IEnumerator getMovelistRequest(string characterName)
    {
        Dictionary<string, object> punishParams = new Dictionary<string, object>();

        punishParams.Add("character", characterName);

        string requestString = JsonConvert.SerializeObject(punishParams);
        byte[] requestData = Encoding.UTF8.GetBytes(requestString);

        using (UnityWebRequest request = new UnityWebRequest(BaseURL + "movelist/" + characterName))
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

                List<Dictionary<string, string>> moveList = JsonConvert.DeserializeObject<List<Dictionary<string, string>>>(request.downloadHandler.text);
            }
            else
            {
                Debug.Log($"error: {request.error}");
            }
        }
    }
    #endregion

    #region fastest move
    public void SearchFastestMove(string characterName)
    {
        StartCoroutine(searchFastestMoveRequest(characterName));
    }

    IEnumerator searchFastestMoveRequest(string characterName)
    {
        Dictionary<string, object> punishParams = new Dictionary<string, object>();

        punishParams.Add("character", characterName);

        string requestString = JsonConvert.SerializeObject(punishParams);
        byte[] requestData = Encoding.UTF8.GetBytes(requestString);

        using (UnityWebRequest request = new UnityWebRequest(BaseURL + "fastest/" + characterName))
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

    #region update move
    public void UpdateMoveData(string characterName, string moveID, string notation, int damage, string guard, int startup, string active, int recovery, int on_block, string invuln)
    {
        StartCoroutine(updateMoveDataRequest(characterName, moveID, notation, damage, guard, startup, active, recovery, on_block, invuln));
    }

    IEnumerator updateMoveDataRequest(string characterName, string moveID, string notation, int damage, string guard, int startup, string active, int recovery, int on_block, string invuln)
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

        using (UnityWebRequest request = new UnityWebRequest(BaseURL + "update/" + characterName + "/" + moveData))
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

    #region delete move
    public void DeleteMoveData(string characterName, string moveName)
    {
        StartCoroutine(DeleteMoveDataRequest(characterName, moveName));
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

        using (UnityWebRequest request = new UnityWebRequest(BaseURL + "delete/" + characterName + "/" + moveName))
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
