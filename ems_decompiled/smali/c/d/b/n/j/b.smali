.class public final synthetic Lc/d/b/n/j/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/n/g;


# static fields
.field public static final synthetic a:Lc/d/b/n/j/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/b/n/j/b;

    invoke-direct {v0}, Lc/d/b/n/j/b;-><init>()V

    sput-object v0, Lc/d/b/n/j/b;->a:Lc/d/b/n/j/b;

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

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lc/d/b/n/h;

    .line 1
    sget-object v0, Lc/d/b/n/j/e;->e:Lc/d/b/n/j/e$a;

    invoke-interface {p2, p1}, Lc/d/b/n/h;->c(Ljava/lang/String;)Lc/d/b/n/h;

    return-void
.end method
