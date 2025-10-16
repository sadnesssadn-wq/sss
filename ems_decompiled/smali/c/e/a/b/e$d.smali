.class public Lc/e/a/b/e$d;
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
    name = "d"
.end annotation


# instance fields
.field public final a:Lc/e/a/b/p/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/p/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/b/e$d;->a:Lc/e/a/b/p/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lc/e/a/b/e$d;->a:Lc/e/a/b/p/b;

    invoke-interface {v0, p1, p2}, Lc/e/a/b/p/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p1}, Lc/e/a/b/p/b$a;->d(Ljava/lang/String;)Lc/e/a/b/p/b$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-object p2

    :cond_0
    new-instance p1, Lc/e/a/b/m/c;

    invoke-direct {p1, p2}, Lc/e/a/b/m/c;-><init>(Ljava/io/InputStream;)V

    return-object p1
.end method
