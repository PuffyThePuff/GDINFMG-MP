using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class Row : MonoBehaviour
{
    TextMeshProUGUI[] columnText;
    public int RowLength { get { return columnText.Length; } }

    // Start is called before the first frame update
    void Awake()
    {
        int childCount = transform.childCount;
        columnText = new TextMeshProUGUI[childCount];

        for (int i = 0; i < childCount; i++)
        {
            Transform child = transform.GetChild(i);
            columnText[i] = child.GetComponentInChildren<TextMeshProUGUI>();
        }
    }

    public void SetColumnText(int index, string content)
    {
        if (RowLength <= index) return;

        columnText[index].SetText(content);
    }
}
