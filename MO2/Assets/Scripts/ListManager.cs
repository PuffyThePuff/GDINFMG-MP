using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class ListManager : MonoBehaviour
{
    [SerializeField] private GameObject prefab;

    [SerializeField] private TMP_InputField nameInput;

    private uint counter = 0;

     #region singleton code
    //Miguel's really cool singleton code he made in 2020 and probably still works
    //put Singleton = this in Awake()
    private static ListManager _singleton;

    //getter and setter for singleton
    public static ListManager Singleton
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
                Debug.Log($"{nameof(ListManager)} instance already exists, destroying duplicate");
                Destroy(value);
            }
        }
    }
    #endregion

    private void Awake()
    {
        Singleton = this;
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void AddToMoveList(string moveData)
    {
        GameObject listObject = Instantiate(prefab, this.gameObject.transform);

        listObject.GetComponent<TMP_Text>().text = counter.ToString();

        counter++;
    }
}
