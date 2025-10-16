.class public final synthetic Lc/d/b/p/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/k/o;


# static fields
.field public static final synthetic a:Lc/d/b/p/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/b/p/c;

    invoke-direct {v0}, Lc/d/b/p/c;-><init>()V

    sput-object v0, Lc/d/b/p/c;->a:Lc/d/b/p/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/d/b/k/n;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lc/d/b/p/d;

    const-class v1, Landroid/content/Context;

    check-cast p1, Lc/d/b/k/d0;

    invoke-virtual {p1, v1}, Lc/d/b/k/d0;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lc/d/b/p/e;

    invoke-virtual {p1, v2}, Lc/d/b/k/d0;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lc/d/b/p/d;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0
.end method
