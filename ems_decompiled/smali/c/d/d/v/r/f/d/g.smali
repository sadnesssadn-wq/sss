.class public final Lc/d/d/v/r/f/d/g;
.super Lc/d/d/v/r/f/d/h;
.source ""


# direct methods
.method public constructor <init>(Lc/d/d/s/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d/d/v/r/f/d/h;-><init>(Lc/d/d/s/a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    const-string v0, "(01)"

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1
    iget-object v2, p0, Lc/d/d/v/r/f/d/j;->b:Lc/d/d/v/r/f/d/s;

    const/4 v3, 0x4

    .line 2
    invoke-virtual {v2, v3, v3}, Lc/d/d/v/r/f/d/s;->c(II)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lc/d/d/v/r/f/d/h;->c(Ljava/lang/StringBuilder;II)V

    .line 3
    iget-object v1, p0, Lc/d/d/v/r/f/d/j;->b:Lc/d/d/v/r/f/d/s;

    const/16 v2, 0x30

    .line 4
    invoke-virtual {v1, v0, v2}, Lc/d/d/v/r/f/d/s;->a(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
