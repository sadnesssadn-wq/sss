.class public final Lc/d/a/b/i/h/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/n/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/b/n/e<",
        "Lc/d/a/b/i/h/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/d/a/b/i/h/c;

.field public static final b:Lc/d/b/n/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/i/h/c;

    invoke-direct {v0}, Lc/d/a/b/i/h/c;-><init>()V

    sput-object v0, Lc/d/a/b/i/h/c;->a:Lc/d/a/b/i/h/c;

    const-string v0, "messagingClientEventExtension"

    invoke-static {v0}, Lc/d/b/n/d;->a(Ljava/lang/String;)Lc/d/b/n/d;

    move-result-object v0

    sput-object v0, Lc/d/a/b/i/h/c;->b:Lc/d/b/n/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lc/d/a/b/i/h/d;

    check-cast p2, Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/c;->b:Lc/d/b/n/d;

    invoke-virtual {p1}, Lc/d/a/b/i/h/d;->a()Lc/d/b/u/d1/b;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    return-void
.end method
