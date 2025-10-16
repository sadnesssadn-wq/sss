.class public Lc/d/c/w/r$c$a;
.super Lc/d/c/w/r$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/c/w/r$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/c/w/r<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/d/c/w/r$c;)V
    .locals 0

    iget-object p1, p1, Lc/d/c/w/r$c;->c:Lc/d/c/w/r;

    invoke-direct {p0, p1}, Lc/d/c/w/r$d;-><init>(Lc/d/c/w/r;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lc/d/c/w/r$d;->a()Lc/d/c/w/r$e;

    move-result-object v0

    iget-object v0, v0, Lc/d/c/w/r$e;->h:Ljava/lang/Object;

    return-object v0
.end method
