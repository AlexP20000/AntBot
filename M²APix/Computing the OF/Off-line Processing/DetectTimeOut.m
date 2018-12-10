function TimeOut = DetectTimeOut(ValD1,D2,startingCounter,countmax)
    % ValD1 : Threshold
    % D2 : Deuxi�me pixel
    % startingCounter : t init de recherche
    % countmax : t final de recherche
    counter = startingCounter;
    while(D2(counter)<ValD1&&counter<length(D2)...
            &&counter<startingCounter+countmax)
        counter = counter + 1;
    end
    if counter<startingCounter+countmax
        TimeOut = counter;    
        % Si on a d�tect� un pulse sur le pixel voisin avant d'arriver � la
        % fin du buffer, alors on valide le flux optique
    else
        TimeOut = 0;
        % Si on n'a pas d�tect� le pulse, alors le pixel voisin n'a pas vu
        % le m�me contraste et donc le DT est infini, i.e. le flux optique
        % est nul
    end
end
