.class public final synthetic Lc/d/b/l/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/k/o;


# static fields
.field public static final synthetic a:Lc/d/b/l/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/b/l/a;

    invoke-direct {v0}, Lc/d/b/l/a;-><init>()V

    sput-object v0, Lc/d/b/l/a;->a:Lc/d/b/l/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/d/b/k/n;)Ljava/lang/Object;
    .locals 5

    .line 1
    const-class v0, Landroid/content/Context;

    check-cast p1, Lc/d/b/k/d0;

    invoke-virtual {p1, v0}, Lc/d/b/k/d0;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lc/d/a/a/j/n;->c(Landroid/content/Context;)V

    invoke-static {}, Lc/d/a/a/j/n;->a()Lc/d/a/a/j/n;

    move-result-object p1

    sget-object v0, Lc/d/a/a/i/c;->g:Lc/d/a/a/i/c;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lc/d/a/a/j/k;

    invoke-static {v0}, Lc/d/a/a/j/n;->b(Lc/d/a/a/j/e;)Ljava/util/Set;

    move-result-object v2

    invoke-static {}, Lc/d/a/a/j/j;->a()Lc/d/a/a/j/j$a;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cct"

    invoke-virtual {v3, v4}, Lc/d/a/a/j/j$a;->b(Ljava/lang/String;)Lc/d/a/a/j/j$a;

    invoke-virtual {v0}, Lc/d/a/a/i/c;->c()[B

    move-result-object v0

    check-cast v3, Lc/d/a/a/j/c$b;

    .line 3
    iput-object v0, v3, Lc/d/a/a/j/c$b;->b:[B

    .line 4
    invoke-virtual {v3}, Lc/d/a/a/j/c$b;->a()Lc/d/a/a/j/j;

    move-result-object v0

    invoke-direct {v1, v2, v0, p1}, Lc/d/a/a/j/k;-><init>(Ljava/util/Set;Lc/d/a/a/j/j;Lc/d/a/a/j/m;)V

    return-object v1
.end method
