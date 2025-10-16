.class public final Lc/d/a/b/e/m/m/g$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/m/n1;
.implements Lc/d/a/b/e/p/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e/m/m/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Lc/d/a/b/e/m/a$f;

.field public final b:Lc/d/a/b/e/m/m/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/m/b<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Lc/d/a/b/e/p/j;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public final synthetic f:Lc/d/a/b/e/m/m/g;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/g;Lc/d/a/b/e/m/a$f;Lc/d/a/b/e/m/m/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/a$f;",
            "Lc/d/a/b/e/m/m/b<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc/d/a/b/e/m/m/g$c;->f:Lc/d/a/b/e/m/m/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/a/b/e/m/m/g$c;->c:Lc/d/a/b/e/p/j;

    iput-object p1, p0, Lc/d/a/b/e/m/m/g$c;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/d/a/b/e/m/m/g$c;->e:Z

    iput-object p2, p0, Lc/d/a/b/e/m/m/g$c;->a:Lc/d/a/b/e/m/a$f;

    iput-object p3, p0, Lc/d/a/b/e/m/m/g$c;->b:Lc/d/a/b/e/m/m/b;

    return-void
.end method


# virtual methods
.method public final a(Lc/d/a/b/e/a;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$c;->f:Lc/d/a/b/e/m/m/g;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 2
    new-instance v1, Lc/d/a/b/e/m/m/z0;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/e/m/m/z0;-><init>(Lc/d/a/b/e/m/m/g$c;Lc/d/a/b/e/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lc/d/a/b/e/a;)V
    .locals 6

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$c;->f:Lc/d/a/b/e/m/m/g;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    .line 2
    iget-object v1, p0, Lc/d/a/b/e/m/m/g$c;->b:Lc/d/a/b/e/m/m/b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/m/g$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 4
    iget-object v1, v1, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 5
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    iget-object v1, v0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "onSignInFailed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lc/d/a/b/e/m/a$f;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lc/d/a/b/e/m/m/g$a;->d(Lc/d/a/b/e/a;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
