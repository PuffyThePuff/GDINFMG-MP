using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Threading.Tasks;
using TMPro;

public class TableCreator : MonoBehaviour
{
    [SerializeField] private Row rowPrefab;
    [SerializeField] private bool useCoroutine;
    [SerializeField] private bool useAsync;

    private List<Row> rowList = new();

    public void StartCreateTable(int num)
    {
        if(useAsync)
            CreateTable(num);
        else if(useCoroutine)
            StartCoroutine(CreateTableCoroutine(num));
    }

    public async void CreateTable(int num)
    {
        foreach(var row in rowList)
        {
            Destroy(row);
        }
        rowList.Clear();
        var m_Transform = transform;
        for (int i = 0; i < num; i++)
        {
            var row = Instantiate(rowPrefab, m_Transform);
            //row.GetComponentInChildren<TextMeshProUGUI>().SetText("uwu");
            //Set text
            int length = row.RowLength;
            for(int j = 0; j < length; j++)
            {
                row.SetColumnText(j, "UWU");
                //yield return null;
                await Task.Yield();
            }
            //Add to list
            rowList.Add(row);
            await Task.Yield();
            //yield return null;
        }

        await Task.Yield();
        //yield return null;
    }

    public IEnumerator CreateTableCoroutine(int num)
    {
        foreach (var row in rowList)
        {
            Destroy(row);
        }
        rowList.Clear();
        var m_Transform = transform;
        for (int i = 0; i < num; i++)
        {
            var row = Instantiate(rowPrefab, m_Transform);
            //row.GetComponentInChildren<TextMeshProUGUI>().SetText("uwu");
            //Set text
            int length = row.RowLength;
            for (int j = 0; j < length; j++)
            {
                row.SetColumnText(j, "UWU");
                yield return null;
                //await Task.Yield();
            }
            //Add to list
            rowList.Add(row);
            //await Task.Yield();
            yield return null;
        }

        //await Task.Yield();
        yield return null;
    }
}
