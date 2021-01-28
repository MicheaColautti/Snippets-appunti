/**
* Questo file contiene le strutture base per la programmazione ad oggetti in C#
* @author michea colautti
* @version 14.2.20
*/     


    #region =================== costanti ===================
	
	const int DEFNUM = 2;
	const string DEFPAR="parola";

	#endregion

	#region =================== membri statici =============
	#endregion

	#region =================== membri & propriet� =========

	/*
	*PROPFULL NUMERI
	*/
	private int number;
	public int Number
	{
    	get
    	{
        	return number;
    	}
    	set
    	{
        	if (value < 1)
        	{
            	value = 1;
        	}
        	number = value;
    	} 
	}

	/*
	*PROPFULL STRINGHE
	*/
	private string nome;
	public string Nome
	{
        get
        {
        	return nome; 
        }
        set
        {
        	if (string.IsNullOrWhiteSpace(value))
        	{
        		value = "Sconosciuto";
            }
            nome = value;
        }
    }

    /*
    *PROP
    */
    public string Parola2 { get; set; }//Defiisco solo una propiet� e non un attributo

    /*
	*USO RANDOM
	*/
	private Random rnd;//DEFINIZIONE
	int num = rnd.Next(<numero massimo>);

	#endregion

	#region =================== costruttori ================

	public <nomeClasse>(int number, string word)
	{
		this.number = Number;
		this.word = Word;
	}
	#endregion

	#region =================== metodi aiuto ===============
	#endregion


	#region =================== metodi generali ============

		public string Descriviti()
	    {
	    	return "La parola �  "+Word+" e il numero � "+Number;
	    }

	#endregion



	#region =================== nel main ===============

	    Models.<nomeClasse> coso = new Models.<nomeClasse>("Parola", 48);//Costruttore con scelta
	    Models.<nomeClasse> coso2 = new Models.<nomeClasse>(DEFPAR, DEFNUM);//Costruttore con costanti
		Console.WriteLine(coso.Descriviti());//stampa tutto.

	#endregion



(fa schifo)

