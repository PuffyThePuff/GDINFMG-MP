using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Threading.Tasks;
using TMPro;

public class TableCreator : MonoBehaviour
{
    [SerializeField] private Row rowPrefab;
    [System.Serializable] private enum UseWhich { Coroutine, Async }
    //[SerializeField] private UseWhich use;

    private List<Row> rowList = new();
    private bool isRunning = false;

    public void StartCreateTable(int num)
    {
        if (isRunning) return;

        //if (use == UseWhich.Coroutine)
            StartCoroutine(CreateTableCoroutine(num));
        //else if (use == UseWhich.Async)
            //CreateTableAsync(num);
            
    }

    public IEnumerator CreateTableCoroutine(int num)
    {
        isRunning = true;
        int count = rowList.Count;
        for(int i = 0; i < count; i++)
        {
            Row row = rowList[i];
            //Debug.Log($"Destroying {row.name}");
            Destroy(row.gameObject);
            yield return null;
        }

        rowList.Clear();
        var m_Transform = transform;
        for (int i = 0; i < num; i++)
        {
            var row = Instantiate(rowPrefab, m_Transform);
            rowList.Add(row);
            //Debug.Log($"Creating {row.name}");
            //row.GetComponentInChildren<TextMeshProUGUI>().SetText("uwu");
            //Set text
            int length = row.RowLength;
            //yield return null;
            for (int j = 0; j < length; j++)
            {
                row.SetColumnText(j, "UWU");
                yield return null;
                //await Task.Yield();
            }
            //await Task.Yield();
            yield return null;
        }

        //await Task.Yield();
        yield return null;
        isRunning = false;
    }

    public async void CreateTableAsync(int num)
    {
        isRunning = true;
        int count = rowList.Count;
        for (int i = 0; i < count; i++)
        {
            Row row = rowList[i];
            Debug.Log($"Destroying {row.name}");
            Destroy(row.gameObject);
            await Task.Yield();
            //yield return null;
        }

        rowList.Clear();
        var m_Transform = transform;
        for (int i = 0; i < num; i++)
        {
            var row = Instantiate(rowPrefab, m_Transform);
            rowList.Add(row);
            Debug.Log($"Creating {row.name}");
            //row.GetComponentInChildren<TextMeshProUGUI>().SetText("uwu");
            //Set text
            int length = row.RowLength;
            //yield return null;
            for (int j = 0; j < length; j++)
            {
                row.SetColumnText(j, "UWU");
                //yield return null;
                await Task.Yield();
            }
            await Task.Yield();
            //yield return null;
        }

        await Task.Yield();
        //yield return null;
        isRunning = false;
    }
}
