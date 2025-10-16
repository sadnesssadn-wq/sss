.class public Lc/c/b/a/e/d;
.super Lc/c/b/a/e/e;
.source ""


# instance fields
.field public a:Ljava/text/DecimalFormat;

.field public b:Lcom/github/mikephil/charting/charts/PieChart;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/c/b/a/e/e;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,##0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/c/b/a/e/d;->a:Ljava/text/DecimalFormat;

    .line 2
    iput-object p1, p0, Lc/c/b/a/e/d;->b:Lcom/github/mikephil/charting/charts/PieChart;

    return-void
.end method


# virtual methods
.method public b(F)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/c/b/a/e/d;->a:Ljava/text/DecimalFormat;

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " %"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(FLc/c/b/a/d/u;)Ljava/lang/String;
    .locals 2

    iget-object p2, p0, Lc/c/b/a/e/d;->b:Lcom/github/mikephil/charting/charts/PieChart;

    if-eqz p2, :cond_0

    .line 1
    iget-boolean p2, p2, Lcom/github/mikephil/charting/charts/PieChart;->S:Z

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/b/a/e/d;->b(F)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lc/c/b/a/e/d;->a:Ljava/text/DecimalFormat;

    float-to-double v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
