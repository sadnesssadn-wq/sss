.class public final Lc/d/a/b/e/m/m/f0;
.super Lc/d/a/b/e/m/m/n0;
.source ""


# instance fields
.field public final synthetic b:Lc/d/a/b/e/m/m/x;

.field public final synthetic c:Lc/d/a/b/n/b/l;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/l0;Lc/d/a/b/e/m/m/x;Lc/d/a/b/n/b/l;)V
    .locals 0

    iput-object p2, p0, Lc/d/a/b/e/m/m/f0;->b:Lc/d/a/b/e/m/m/x;

    iput-object p3, p0, Lc/d/a/b/e/m/m/f0;->c:Lc/d/a/b/n/b/l;

    invoke-direct {p0, p1}, Lc/d/a/b/e/m/m/n0;-><init>(Lc/d/a/b/e/m/m/l0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lc/d/a/b/e/m/m/f0;->b:Lc/d/a/b/e/m/m/x;

    iget-object v1, p0, Lc/d/a/b/e/m/m/f0;->c:Lc/d/a/b/n/b/l;

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v2}, Lc/d/a/b/e/m/m/x;->g(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v3, v1, Lc/d/a/b/n/b/l;->d:Lc/d/a/b/e/a;

    .line 3
    invoke-virtual {v3}, Lc/d/a/b/e/a;->w()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 4
    iget-object v1, v1, Lc/d/a/b/n/b/l;->e:Lc/d/a/b/e/p/o0;

    const-string v2, "null reference"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v3, v1, Lc/d/a/b/e/p/o0;->e:Lc/d/a/b/e/a;

    .line 7
    invoke-virtual {v3}, Lc/d/a/b/e/a;->w()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v4, "GACConnecting"

    invoke-static {v4, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    iput-boolean v5, v0, Lc/d/a/b/e/m/m/x;->n:Z

    invoke-virtual {v1}, Lc/d/a/b/e/p/o0;->v()Lc/d/a/b/e/p/j;

    move-result-object v3

    .line 8
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v3, v0, Lc/d/a/b/e/m/m/x;->o:Lc/d/a/b/e/p/j;

    .line 10
    iget-boolean v2, v1, Lc/d/a/b/e/p/o0;->f:Z

    .line 11
    iput-boolean v2, v0, Lc/d/a/b/e/m/m/x;->p:Z

    .line 12
    iget-boolean v1, v1, Lc/d/a/b/e/p/o0;->g:Z

    .line 13
    iput-boolean v1, v0, Lc/d/a/b/e/m/m/x;->q:Z

    goto :goto_0

    .line 14
    :cond_2
    iget-boolean v1, v0, Lc/d/a/b/e/m/m/x;->l:Z

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lc/d/a/b/e/a;->v()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {v0}, Lc/d/a/b/e/m/m/x;->m()V

    :goto_0
    invoke-virtual {v0}, Lc/d/a/b/e/m/m/x;->i()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v0, v3}, Lc/d/a/b/e/m/m/x;->e(Lc/d/a/b/e/a;)V

    :goto_2
    return-void
.end method
