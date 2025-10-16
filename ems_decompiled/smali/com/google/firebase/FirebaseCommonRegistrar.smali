.class public Lcom/google/firebase/FirebaseCommonRegistrar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/k/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/d/b/k/m<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1
    const-class v1, Lc/d/b/v/h;

    invoke-static {v1}, Lc/d/b/k/m;->a(Ljava/lang/Class;)Lc/d/b/k/m$b;

    move-result-object v1

    const-class v2, Lc/d/b/v/f;

    .line 2
    new-instance v3, Lc/d/b/k/u;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lc/d/b/k/u;-><init>(Ljava/lang/Class;II)V

    .line 3
    invoke-virtual {v1, v3}, Lc/d/b/k/m$b;->a(Lc/d/b/k/u;)Lc/d/b/k/m$b;

    sget-object v2, Lc/d/b/v/a;->a:Lc/d/b/v/a;

    invoke-virtual {v1, v2}, Lc/d/b/k/m$b;->c(Lc/d/b/k/o;)Lc/d/b/k/m$b;

    invoke-virtual {v1}, Lc/d/b/k/m$b;->b()Lc/d/b/k/m;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    sget v1, Lc/d/b/p/d;->b:I

    const-class v1, Lc/d/b/p/f;

    invoke-static {v1}, Lc/d/b/k/m;->a(Ljava/lang/Class;)Lc/d/b/k/m$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 6
    new-instance v3, Lc/d/b/k/u;

    const/4 v6, 0x1

    invoke-direct {v3, v2, v6, v5}, Lc/d/b/k/u;-><init>(Ljava/lang/Class;II)V

    .line 7
    invoke-virtual {v1, v3}, Lc/d/b/k/m$b;->a(Lc/d/b/k/u;)Lc/d/b/k/m$b;

    const-class v2, Lc/d/b/p/e;

    .line 8
    new-instance v3, Lc/d/b/k/u;

    invoke-direct {v3, v2, v4, v5}, Lc/d/b/k/u;-><init>(Ljava/lang/Class;II)V

    .line 9
    invoke-virtual {v1, v3}, Lc/d/b/k/m$b;->a(Lc/d/b/k/u;)Lc/d/b/k/m$b;

    sget-object v2, Lc/d/b/p/c;->a:Lc/d/b/p/c;

    invoke-virtual {v1, v2}, Lc/d/b/k/m$b;->c(Lc/d/b/k/o;)Lc/d/b/k/m$b;

    invoke-virtual {v1}, Lc/d/b/k/m$b;->b()Lc/d/b/k/m;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fire-android"

    invoke-static {v2, v1}, Lc/d/b/u/n;->d(Ljava/lang/String;Ljava/lang/String;)Lc/d/b/k/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "fire-core"

    const-string v2, "20.0.0"

    invoke-static {v1, v2}, Lc/d/b/u/n;->d(Ljava/lang/String;Ljava/lang/String;)Lc/d/b/k/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-name"

    invoke-static {v2, v1}, Lc/d/b/u/n;->d(Ljava/lang/String;Ljava/lang/String;)Lc/d/b/k/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-model"

    invoke-static {v2, v1}, Lc/d/b/u/n;->d(Ljava/lang/String;Ljava/lang/String;)Lc/d/b/k/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-brand"

    invoke-static {v2, v1}, Lc/d/b/u/n;->d(Ljava/lang/String;Ljava/lang/String;)Lc/d/b/k/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/b/c;->a:Lc/d/b/c;

    const-string v2, "android-target-sdk"

    invoke-static {v2, v1}, Lc/d/b/u/n;->i(Ljava/lang/String;Lc/d/b/v/g;)Lc/d/b/k/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/b/d;->a:Lc/d/b/d;

    const-string v2, "android-min-sdk"

    invoke-static {v2, v1}, Lc/d/b/u/n;->i(Ljava/lang/String;Lc/d/b/v/g;)Lc/d/b/k/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/b/e;->a:Lc/d/b/e;

    const-string v2, "android-platform"

    invoke-static {v2, v1}, Lc/d/b/u/n;->i(Ljava/lang/String;Lc/d/b/v/g;)Lc/d/b/k/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/b/b;->a:Lc/d/b/b;

    const-string v2, "android-installer"

    invoke-static {v2, v1}, Lc/d/b/u/n;->i(Ljava/lang/String;Lc/d/b/v/g;)Lc/d/b/k/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lc/d/b/u/n;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "kotlin"

    invoke-static {v2, v1}, Lc/d/b/u/n;->d(Ljava/lang/String;Ljava/lang/String;)Lc/d/b/k/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
