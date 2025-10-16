.class public final synthetic Lc/d/a/b/i/h/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/n/e;


# static fields
.field public static final synthetic a:Lc/d/a/b/i/h/m;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/i/h/m;

    invoke-direct {v0}, Lc/d/a/b/i/h/m;-><init>()V

    sput-object v0, Lc/d/a/b/i/h/m;->a:Lc/d/a/b/i/h/m;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Lc/d/b/n/f;

    .line 1
    sget-object v0, Lc/d/a/b/i/h/n;->g:Lc/d/b/n/d;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/n;->h:Lc/d/b/n/d;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    return-void
.end method
