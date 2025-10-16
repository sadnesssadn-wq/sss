.class public final Lc/e/a/a/a/b/c/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/a/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public c:[Ljava/io/File;

.field public final d:[Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lc/e/a/a/a/b/c/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLc/e/a/a/a/b/c/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lc/e/a/a/a/b/c/a$e;->c:[Ljava/io/File;

    iput-object p6, p0, Lc/e/a/a/a/b/c/a$e;->d:[Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lc/e/a/a/a/b/c/a$e;->d:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lc/e/a/a/a/b/c/d;->a(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
