.class public Lc/d/c/w/r$b$a;
.super Lc/d/c/w/r$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/c/w/r$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/c/w/r<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/d/c/w/r$b;)V
    .locals 0

    iget-object p1, p1, Lc/d/c/w/r$b;->c:Lc/d/c/w/r;

    invoke-direct {p0, p1}, Lc/d/c/w/r$d;-><init>(Lc/d/c/w/r;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/d/c/w/r$d;->a()Lc/d/c/w/r$e;

    move-result-object v0

    return-object v0
.end method
