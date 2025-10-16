.class public final synthetic Lc/d/a/b/i/h/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/n/e;


# static fields
.field public static final synthetic a:Lc/d/a/b/i/h/o;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/i/h/o;

    invoke-direct {v0}, Lc/d/a/b/i/h/o;-><init>()V

    sput-object v0, Lc/d/a/b/i/h/o;->a:Lc/d/a/b/i/h/o;

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

    check-cast p2, Lc/d/b/n/f;

    sget p2, Lc/d/a/b/i/h/p;->d:I

    new-instance p2, Lc/d/b/n/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Couldn\'t find encoder for type "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p2, p1}, Lc/d/b/n/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method
