.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/k/p;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/d/b/k/m<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lc/d/b/k/m;

    const-class v1, Lc/d/b/s/h;

    invoke-static {v1}, Lc/d/b/k/m;->a(Ljava/lang/Class;)Lc/d/b/k/m$b;

    move-result-object v1

    const-class v2, Lc/d/b/g;

    .line 1
    new-instance v3, Lc/d/b/k/u;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lc/d/b/k/u;-><init>(Ljava/lang/Class;II)V

    .line 2
    invoke-virtual {v1, v3}, Lc/d/b/k/m$b;->a(Lc/d/b/k/u;)Lc/d/b/k/m$b;

    const-class v2, Lc/d/b/p/f;

    .line 3
    new-instance v3, Lc/d/b/k/u;

    invoke-direct {v3, v2, v5, v4}, Lc/d/b/k/u;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v1, v3}, Lc/d/b/k/m$b;->a(Lc/d/b/k/u;)Lc/d/b/k/m$b;

    const-class v2, Lc/d/b/v/h;

    .line 5
    new-instance v3, Lc/d/b/k/u;

    invoke-direct {v3, v2, v5, v4}, Lc/d/b/k/u;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Lc/d/b/k/m$b;->a(Lc/d/b/k/u;)Lc/d/b/k/m$b;

    sget-object v2, Lc/d/b/s/d;->a:Lc/d/b/s/d;

    invoke-virtual {v1, v2}, Lc/d/b/k/m$b;->c(Lc/d/b/k/o;)Lc/d/b/k/m$b;

    invoke-virtual {v1}, Lc/d/b/k/m$b;->b()Lc/d/b/k/m;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-installations"

    const-string v2, "17.0.0"

    invoke-static {v1, v2}, Lc/d/b/u/n;->d(Ljava/lang/String;Ljava/lang/String;)Lc/d/b/k/m;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
