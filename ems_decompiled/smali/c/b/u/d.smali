.class public Lc/b/u/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/u/d$a;
    }
.end annotation


# static fields
.field public static final a:Lc/b/u/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/u/d;

    invoke-direct {v0}, Lc/b/u/d;-><init>()V

    sput-object v0, Lc/b/u/d;->a:Lc/b/u/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/u/d$a;)V
    .locals 3

    invoke-interface {p1}, Lc/b/u/d$a;->c()V

    .line 1
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v0

    iget-object v0, v0, Lc/b/k/a;->a:Lc/b/k/e;

    const-string v1, "PREF_LIST_PROVINCE"

    invoke-virtual {v0, v1}, Lc/b/k/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lc/a/a/a/a;->H()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lc/b/k/c;

    invoke-direct {v2}, Lc/b/k/c;-><init>()V

    .line 2
    iget-object v2, v2, Lc/d/c/x/a;->b:Ljava/lang/reflect/Type;

    .line 3
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Lc/b/u/d$a;->b(Ljava/util/List;)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Lc/b/u/c;

    invoke-direct {v0, p0, p1}, Lc/b/u/c;-><init>(Lc/b/u/d;Lc/b/u/d$a;)V

    invoke-static {v0}, Lc/b/s/a;->k(Lc/b/t/b$d;)V

    return-void
.end method
