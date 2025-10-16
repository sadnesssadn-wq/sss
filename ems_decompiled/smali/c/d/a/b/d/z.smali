.class public final synthetic Lc/d/a/b/d/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/k;


# static fields
.field public static final synthetic a:Lc/d/a/b/d/z;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/d/z;

    invoke-direct {v0}, Lc/d/a/b/d/z;-><init>()V

    sput-object v0, Lc/d/a/b/d/z;->a:Lc/d/a/b/d/z;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lc/d/a/b/p/l;
    .locals 1

    check-cast p1, Landroid/os/Bundle;

    .line 1
    sget v0, Lc/d/a/b/d/c;->h:I

    if-eqz p1, :cond_0

    const-string v0, "google.messenger"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q(Ljava/lang/Object;)Lc/d/a/b/p/l;

    move-result-object p1

    return-object p1
.end method
