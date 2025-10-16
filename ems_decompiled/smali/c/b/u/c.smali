.class public Lc/b/u/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/u/d$a;


# direct methods
.method public constructor <init>(Lc/b/u/d;Lc/b/u/d$a;)V
    .locals 0

    iput-object p2, p0, Lc/b/u/c;->a:Lc/b/u/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    const-class v0, Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Lc/d/c/e;

    invoke-direct {v0}, Lc/d/c/e;-><init>()V

    invoke-virtual {v0}, Lc/d/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    const-string v2, "PREF_LIST_PROVINCE"

    invoke-virtual {v1, v2, v0}, Lc/b/k/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/b/u/c;->a:Lc/b/u/d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc/b/u/d$a;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/u/c;->a:Lc/b/u/d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc/b/u/d$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
