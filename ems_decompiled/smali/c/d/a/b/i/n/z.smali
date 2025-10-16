.class public final Lc/d/a/b/i/n/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/n/y1;


# static fields
.field public static final a:Lc/d/a/b/i/n/y1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/i/n/z;

    invoke-direct {v0}, Lc/d/a/b/i/n/z;-><init>()V

    sput-object v0, Lc/d/a/b/i/n/z;->a:Lc/d/a/b/i/n/y1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    invoke-static {p1}, Lc/d/a/b/i/n/l$b;->a(I)Lc/d/a/b/i/n/l$b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
