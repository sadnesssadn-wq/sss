.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
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

.method public static synthetic lambda$getComponents$0(Lc/d/b/k/n;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 9

    new-instance v8, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-class v0, Lc/d/b/g;

    invoke-interface {p0, v0}, Lc/d/b/k/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lc/d/b/g;

    const-class v0, Lc/d/b/q/a/a;

    invoke-interface {p0, v0}, Lc/d/b/k/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lc/d/b/q/a/a;

    const-class v0, Lc/d/b/v/h;

    invoke-interface {p0, v0}, Lc/d/b/k/n;->c(Ljava/lang/Class;)Lc/d/b/r/b;

    move-result-object v3

    const-class v0, Lc/d/b/p/f;

    invoke-interface {p0, v0}, Lc/d/b/k/n;->c(Ljava/lang/Class;)Lc/d/b/r/b;

    move-result-object v4

    const-class v0, Lc/d/b/s/h;

    invoke-interface {p0, v0}, Lc/d/b/k/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lc/d/b/s/h;

    const-class v0, Lc/d/a/a/g;

    invoke-interface {p0, v0}, Lc/d/b/k/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lc/d/a/a/g;

    const-class v0, Lc/d/b/o/d;

    invoke-interface {p0, v0}, Lc/d/b/k/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lc/d/b/o/d;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lc/d/b/g;Lc/d/b/q/a/a;Lc/d/b/r/b;Lc/d/b/r/b;Lc/d/b/s/h;Lc/d/a/a/g;Lc/d/b/o/d;)V

    return-object v8
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

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

    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

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

    const-class v2, Lc/d/b/q/a/a;

    .line 3
    new-instance v3, Lc/d/b/k/u;

    invoke-direct {v3, v2, v5, v5}, Lc/d/b/k/u;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v1, v3}, Lc/d/b/k/m$b;->a(Lc/d/b/k/u;)Lc/d/b/k/m$b;

    const-class v2, Lc/d/b/v/h;

    .line 5
    new-instance v3, Lc/d/b/k/u;

    invoke-direct {v3, v2, v5, v4}, Lc/d/b/k/u;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Lc/d/b/k/m$b;->a(Lc/d/b/k/u;)Lc/d/b/k/m$b;

    const-class v2, Lc/d/b/p/f;

    .line 7
    new-instance v3, Lc/d/b/k/u;

    invoke-direct {v3, v2, v5, v4}, Lc/d/b/k/u;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v3}, Lc/d/b/k/m$b;->a(Lc/d/b/k/u;)Lc/d/b/k/m$b;

    const-class v2, Lc/d/a/a/g;

    .line 9
    new-instance v3, Lc/d/b/k/u;

    invoke-direct {v3, v2, v5, v5}, Lc/d/b/k/u;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v1, v3}, Lc/d/b/k/m$b;->a(Lc/d/b/k/u;)Lc/d/b/k/m$b;

    const-class v2, Lc/d/b/s/h;

    .line 11
    new-instance v3, Lc/d/b/k/u;

    invoke-direct {v3, v2, v4, v5}, Lc/d/b/k/u;-><init>(Ljava/lang/Class;II)V

    .line 12
    invoke-virtual {v1, v3}, Lc/d/b/k/m$b;->a(Lc/d/b/k/u;)Lc/d/b/k/m$b;

    const-class v2, Lc/d/b/o/d;

    .line 13
    new-instance v3, Lc/d/b/k/u;

    invoke-direct {v3, v2, v4, v5}, Lc/d/b/k/u;-><init>(Ljava/lang/Class;II)V

    .line 14
    invoke-virtual {v1, v3}, Lc/d/b/k/m$b;->a(Lc/d/b/k/u;)Lc/d/b/k/m$b;

    sget-object v2, Lc/d/b/u/w;->a:Lc/d/b/u/w;

    invoke-virtual {v1, v2}, Lc/d/b/k/m$b;->c(Lc/d/b/k/o;)Lc/d/b/k/m$b;

    .line 15
    iget v2, v1, Lc/d/b/k/m$b;->c:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iput v4, v1, Lc/d/b/k/m$b;->c:I

    .line 16
    invoke-virtual {v1}, Lc/d/b/k/m$b;->b()Lc/d/b/k/m;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-fcm"

    const-string v2, "23.0.0"

    invoke-static {v1, v2}, Lc/d/b/u/n;->d(Ljava/lang/String;Ljava/lang/String;)Lc/d/b/k/m;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instantiation type has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
