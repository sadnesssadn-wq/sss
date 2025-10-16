.class public Lc/e/a/b/e$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/e/a/b/p/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lc/e/a/b/p/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/p/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/b/e$c;->a:Lc/e/a/b/p/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    invoke-static {p1}, Lc/e/a/b/p/b$a;->d(Ljava/lang/String;)Lc/e/a/b/p/b$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc/e/a/b/e$c;->a:Lc/e/a/b/p/b;

    invoke-interface {v0, p1, p2}, Lc/e/a/b/p/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
