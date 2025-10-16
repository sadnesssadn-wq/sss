.class public final synthetic Lc/d/b/u/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/c;


# static fields
.field public static final synthetic a:Lc/d/b/u/j;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/b/u/j;

    invoke-direct {v0}, Lc/d/b/u/j;-><init>()V

    sput-object v0, Lc/d/b/u/j;->a:Lc/d/b/u/j;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Lc/d/a/b/p/l;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p1, Lc/d/b/u/m;->b:Ljava/lang/Object;

    const/16 p1, 0x193

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
