.class public final Lc/d/d/v/r/f/d/k;
.super Lc/d/d/v/r/f/d/j;
.source ""


# direct methods
.method public constructor <init>(Lc/d/d/s/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d/d/v/r/f/d/j;-><init>(Lc/d/d/s/a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    iget-object v1, p0, Lc/d/d/v/r/f/d/j;->b:Lc/d/d/v/r/f/d/s;

    const/4 v2, 0x5

    .line 2
    invoke-virtual {v1, v0, v2}, Lc/d/d/v/r/f/d/s;->a(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
