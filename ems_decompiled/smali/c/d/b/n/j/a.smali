.class public final synthetic Lc/d/b/n/j/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/n/e;


# static fields
.field public static final synthetic a:Lc/d/b/n/j/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/b/n/j/a;

    invoke-direct {v0}, Lc/d/b/n/j/a;-><init>()V

    sput-object v0, Lc/d/b/n/j/a;->a:Lc/d/b/n/j/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lc/d/b/n/f;

    .line 1
    sget-object p2, Lc/d/b/n/j/e;->e:Lc/d/b/n/j/e$a;

    new-instance p2, Lc/d/b/n/c;

    const-string v0, "Couldn\'t find encoder for type "

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lc/d/b/n/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method
