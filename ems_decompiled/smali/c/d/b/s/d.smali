.class public final synthetic Lc/d/b/s/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/k/o;


# static fields
.field public static final synthetic a:Lc/d/b/s/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/b/s/d;

    invoke-direct {v0}, Lc/d/b/s/d;-><init>()V

    sput-object v0, Lc/d/b/s/d;->a:Lc/d/b/s/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/d/b/k/n;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lc/d/b/s/g;

    const-class v1, Lc/d/b/g;

    check-cast p1, Lc/d/b/k/d0;

    invoke-virtual {p1, v1}, Lc/d/b/k/d0;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/b/g;

    const-class v2, Lc/d/b/v/h;

    invoke-virtual {p1, v2}, Lc/d/b/k/d0;->c(Ljava/lang/Class;)Lc/d/b/r/b;

    move-result-object v2

    const-class v3, Lc/d/b/p/f;

    invoke-virtual {p1, v3}, Lc/d/b/k/d0;->c(Ljava/lang/Class;)Lc/d/b/r/b;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lc/d/b/s/g;-><init>(Lc/d/b/g;Lc/d/b/r/b;Lc/d/b/r/b;)V

    return-object v0
.end method
