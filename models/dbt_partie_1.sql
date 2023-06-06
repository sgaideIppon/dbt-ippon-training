select 
    sum(nb_employees) as nombre_employes

from {{ref('restaurants') }}

