.class public Lc/b/u/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/u/a;->a(Lc/b/u/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/u/a$b;


# direct methods
.method public constructor <init>(Lc/b/u/a;Lc/b/u/a$b;)V
    .locals 0

    iput-object p2, p0, Lc/b/u/a$a;->a:Lc/b/u/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    const-class v0, Lc/b/p/e/i;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

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

    const-string v2, "PREF_GRAB_SERVICE"

    invoke-virtual {v1, v2, v0}, Lc/b/k/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/b/u/a$a;->a:Lc/b/u/a$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc/b/u/a$b;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/u/a$a;->a:Lc/b/u/a$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc/b/u/a$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
