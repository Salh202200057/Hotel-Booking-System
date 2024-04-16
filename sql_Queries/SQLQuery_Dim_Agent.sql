select ag.[AgentID] ,ag.[Agent], ag.[Age] agent_age,ag.[Gender] agent_gender, ag.[Agent_Sup],
		dep.[Dno],dep.[Dname], 
		man.[ManagerID],man.[Manager_Name],man.[Gender] manager_gender,man.[Age] manager_age

		from [dbo].[Agent] as ag
		left join [dbo].[Department] as dep
		on (ag.[Dno]=dep.[Dno])
		left join [dbo].[Managers] as man
		on(dep.[ManagerID]=man.[ManagerID])