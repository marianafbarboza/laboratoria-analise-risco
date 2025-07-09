from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, confusion_matrix, classification_report, roc_auc_score, roc_curve
import matplotlib.pyplot as plt
import seaborn as sns

# Preparar X e y (mesmas variáveis usadas antes)
X = df[['age', 'score_risco', 'debt_ratio_tratado']]
y = df['default_flag']

# Criar e treinar modelo Random Forest com balanço de classes
model_rf = RandomForestClassifier(class_weight='balanced', random_state=42, n_estimators=100)
model_rf.fit(X, y)

# Previsões e probabilidades
y_pred = model_rf.predict(X)
y_proba = model_rf.predict_proba(X)[:, 1]

# Avaliar acurácia
acc = accuracy_score(y, y_pred)
print(f"Acurácia: {acc:.4f}")

# Matriz de confusão
cm = confusion_matrix(y, y_pred)
print("Matriz de confusão:")
print(cm)

plt.figure(figsize=(6,4))
sns.heatmap(cm, annot=True, fmt='d', cmap='Greens')
plt.xlabel("Previsto")
plt.ylabel("Real")
plt.title("Matriz de Confusão - Random Forest")
plt.show()

# Relatório de classificação
report = classification_report(y, y_pred)
print("Relatório de classificação:")
print(report)

# Curva ROC e AUC
auc = roc_auc_score(y, y_proba)
fpr, tpr, _ = roc_curve(y, y_proba)

plt.figure(figsize=(6,6))
plt.plot(fpr, tpr, label=f"ROC curve (AUC = {auc:.4f})")
plt.plot([0,1], [0,1], linestyle='--', color='gray')
plt.xlabel("Taxa de Falso Positivo")
plt.ylabel("Taxa de Verdadeiro Positivo")
plt.title("Curva ROC - Random Forest")
plt.legend()
plt.grid(True)
plt.show()
