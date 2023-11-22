using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
public class ListaDuplamenteEncadeada
 {
 #region Descritores
 public No Primeiro { get => primeiro; }
 public No Ultimo { get => ultimo; }
 public int Tamanho { get => tamanho; }
 #endregion
 public void AdicionarNoInicio(int valor)
 {
 var novoNo = new No { Valor = valor };
 if (primeiro == null)
 primeiro = ultimo = novoNo;
 else
 {
 primeiro.Anterior = novoNo;
 novoNo.Proximo = primeiro;
 primeiro = novoNo;
 }
 tamanho++;
 }
 public void AdicionarNoFinal(int valor)
 {
 var novoNo = new No { Valor = valor };
 if (primeiro == null)
 primeiro = ultimo = novoNo;
 else
 {
 novoNo.Anterior = ultimo;
 ultimo.Proximo = novoNo;
 ultimo = novoNo;
 }
 tamanho++;
 }
 public void RemoverNoInicio()
 {
 if (primeiro != null)
 {
 if (primeiro == ultimo)
 {
 primeiro = ultimo = null;
 }
 else
 {
 primeiro = primeiro.Proximo;
primeiro.Anterior = null;
 }
 tamanho--;
 }
 }
 public void RemoverNoFinal()
 {
 if (primeiro != null)
 {
 if (primeiro == ultimo)
 {
 primeiro = ultimo = null;
 }
 else
 {
 ultimo.Anterior.Proximo = null;
 ultimo = ultimo.Anterior;
 }
 tamanho--;
 }
 }
 public No Localizar(int valor)
 {
 for (var no = primeiro; no != null; no = no.Proximo)
 {
 if (no.Valor == valor)
 {
 return no;
 }
 }
 return null;
 }
 private No primeiro = null;
 private No ultimo = null;
 private int tamanho = 0;
 }
