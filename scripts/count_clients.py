import pandas as pd
df = pd.read_csv('C:\Users\Мария\Downloads\Обучение\dataengineering_bootcamp_tasks_sql-python\data')
client_count = len(df)
print(f"Количество клиентов в датасете: {client_count}")