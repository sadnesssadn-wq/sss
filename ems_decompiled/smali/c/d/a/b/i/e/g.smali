.class public final synthetic Lc/d/a/b/i/e/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/m;


# instance fields
.field public final a:Lc/d/a/b/i/e/e;


# direct methods
.method public constructor <init>(Lc/d/a/b/i/e/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/e/g;->a:Lc/d/a/b/i/e/e;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/d/a/b/i/e/g;->a:Lc/d/a/b/i/e/e;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lc/d/a/b/i/e/e;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, v0, Lc/d/a/b/i/e/e;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lc/d/a/b/i/e/g5;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
