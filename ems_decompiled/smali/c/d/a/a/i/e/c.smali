.class public final Lc/d/a/a/i/e/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/n/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/b/n/e<",
        "Lc/d/a/a/i/e/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/d/a/a/i/e/c;

.field public static final b:Lc/d/b/n/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/a/i/e/c;

    invoke-direct {v0}, Lc/d/a/a/i/e/c;-><init>()V

    sput-object v0, Lc/d/a/a/i/e/c;->a:Lc/d/a/a/i/e/c;

    const-string v0, "logRequest"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/a/i/e/c;->b:Lc/d/b/n/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lc/d/a/a/i/e/o;

    check-cast p2, Lc/d/b/n/f;

    .line 1
    sget-object v0, Lc/d/a/a/i/e/c;->b:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/a/i/e/o;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    return-void
.end method
