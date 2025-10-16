.class public final Lc/d/a/b/e/m/m/k1;
.super Lc/d/a/b/n/b/c;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/e$b;
.implements Lc/d/a/b/e/m/e$c;


# static fields
.field public static j:Lc/d/a/b/e/m/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$a<",
            "+",
            "Lc/d/a/b/n/g;",
            "Lc/d/a/b/n/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Landroid/os/Handler;

.field public final e:Lc/d/a/b/e/m/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$a<",
            "+",
            "Lc/d/a/b/n/g;",
            "Lc/d/a/b/n/a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lc/d/a/b/e/p/d;

.field public h:Lc/d/a/b/n/g;

.field public i:Lc/d/a/b/e/m/m/n1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lc/d/a/b/n/d;->c:Lc/d/a/b/e/m/a$a;

    sput-object v0, Lc/d/a/b/e/m/m/k1;->j:Lc/d/a/b/e/m/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lc/d/a/b/e/p/d;)V
    .locals 1

    sget-object v0, Lc/d/a/b/e/m/m/k1;->j:Lc/d/a/b/e/m/a$a;

    .line 1
    invoke-direct {p0}, Lc/d/a/b/n/b/c;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/m/m/k1;->c:Landroid/content/Context;

    iput-object p2, p0, Lc/d/a/b/e/m/m/k1;->d:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lc/d/a/b/e/m/m/k1;->g:Lc/d/a/b/e/p/d;

    .line 2
    iget-object p1, p3, Lc/d/a/b/e/p/d;->b:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lc/d/a/b/e/m/m/k1;->f:Ljava/util/Set;

    iput-object v0, p0, Lc/d/a/b/e/m/m/k1;->e:Lc/d/a/b/e/m/a$a;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lc/d/a/b/e/m/m/k1;->h:Lc/d/a/b/n/g;

    invoke-interface {p1, p0}, Lc/d/a/b/n/g;->q(Lc/d/a/b/n/b/f;)V

    return-void
.end method

.method public final onConnectionFailed(Lc/d/a/b/e/a;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/k1;->i:Lc/d/a/b/e/m/m/n1;

    check-cast v0, Lc/d/a/b/e/m/m/g$c;

    invoke-virtual {v0, p1}, Lc/d/a/b/e/m/m/g$c;->b(Lc/d/a/b/e/a;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    iget-object p1, p0, Lc/d/a/b/e/m/m/k1;->h:Lc/d/a/b/n/g;

    invoke-interface {p1}, Lc/d/a/b/e/m/a$f;->s()V

    return-void
.end method

.method public final w(Lc/d/a/b/n/b/l;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/k1;->d:Landroid/os/Handler;

    new-instance v1, Lc/d/a/b/e/m/m/l1;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/e/m/m/l1;-><init>(Lc/d/a/b/e/m/m/k1;Lc/d/a/b/n/b/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
