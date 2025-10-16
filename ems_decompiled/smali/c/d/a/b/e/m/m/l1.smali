.class public final Lc/d/a/b/e/m/m/l1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/a/b/n/b/l;

.field public final synthetic d:Lc/d/a/b/e/m/m/k1;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/k1;Lc/d/a/b/n/b/l;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/m/m/l1;->d:Lc/d/a/b/e/m/m/k1;

    iput-object p2, p0, Lc/d/a/b/e/m/m/l1;->c:Lc/d/a/b/n/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lc/d/a/b/e/m/m/l1;->d:Lc/d/a/b/e/m/m/k1;

    iget-object v1, p0, Lc/d/a/b/e/m/m/l1;->c:Lc/d/a/b/n/b/l;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v1, Lc/d/a/b/n/b/l;->d:Lc/d/a/b/e/a;

    .line 3
    invoke-virtual {v2}, Lc/d/a/b/e/a;->w()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4
    iget-object v1, v1, Lc/d/a/b/n/b/l;->e:Lc/d/a/b/e/p/o0;

    const-string v2, "null reference"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v2, v1, Lc/d/a/b/e/p/o0;->e:Lc/d/a/b/e/a;

    .line 7
    invoke-virtual {v2}, Lc/d/a/b/e/a;->w()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v4, "SignInCoordinator"

    invoke-static {v4, v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lc/d/a/b/e/m/m/k1;->i:Lc/d/a/b/e/m/m/n1;

    invoke-virtual {v1}, Lc/d/a/b/e/p/o0;->v()Lc/d/a/b/e/p/j;

    move-result-object v1

    iget-object v3, v0, Lc/d/a/b/e/m/m/k1;->f:Ljava/util/Set;

    check-cast v2, Lc/d/a/b/e/m/m/g$c;

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iput-object v1, v2, Lc/d/a/b/e/m/m/g$c;->c:Lc/d/a/b/e/p/j;

    iput-object v3, v2, Lc/d/a/b/e/m/m/g$c;->d:Ljava/util/Set;

    .line 9
    iget-boolean v4, v2, Lc/d/a/b/e/m/m/g$c;->e:Z

    if-eqz v4, :cond_4

    iget-object v2, v2, Lc/d/a/b/e/m/m/g$c;->a:Lc/d/a/b/e/m/a$f;

    invoke-interface {v2, v1, v3}, Lc/d/a/b/e/m/a$f;->g(Lc/d/a/b/e/p/j;Ljava/util/Set;)V

    goto :goto_2

    .line 10
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v3, "GoogleApiManager"

    const-string v4, "Received null response from onSignInSuccess"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lc/d/a/b/e/a;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Lc/d/a/b/e/a;-><init>(I)V

    invoke-virtual {v2, v1}, Lc/d/a/b/e/m/m/g$c;->b(Lc/d/a/b/e/a;)V

    goto :goto_2

    .line 11
    :cond_3
    :goto_1
    iget-object v1, v0, Lc/d/a/b/e/m/m/k1;->i:Lc/d/a/b/e/m/m/n1;

    check-cast v1, Lc/d/a/b/e/m/m/g$c;

    invoke-virtual {v1, v2}, Lc/d/a/b/e/m/m/g$c;->b(Lc/d/a/b/e/a;)V

    :cond_4
    :goto_2
    iget-object v0, v0, Lc/d/a/b/e/m/m/k1;->h:Lc/d/a/b/n/g;

    invoke-interface {v0}, Lc/d/a/b/e/m/a$f;->s()V

    return-void
.end method
