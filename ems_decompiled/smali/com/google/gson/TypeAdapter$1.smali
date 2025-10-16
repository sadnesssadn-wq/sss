.class public Lcom/google/gson/TypeAdapter$1;
.super Lc/d/c/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/c/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/d/c/t;


# direct methods
.method public constructor <init>(Lc/d/c/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/TypeAdapter$1;->a:Lc/d/c/t;

    invoke-direct {p0}, Lc/d/c/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/d/c/y/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/c/y/a;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lc/d/c/y/a;->E()Lc/d/c/y/b;

    move-result-object v0

    sget-object v1, Lc/d/c/y/b;->k:Lc/d/c/y/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lc/d/c/y/a;->A()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/gson/TypeAdapter$1;->a:Lc/d/c/t;

    invoke-virtual {v0, p1}, Lc/d/c/t;->a(Lc/d/c/y/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/d/c/y/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/c/y/c;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lc/d/c/y/c;->o()Lc/d/c/y/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/TypeAdapter$1;->a:Lc/d/c/t;

    invoke-virtual {v0, p1, p2}, Lc/d/c/t;->b(Lc/d/c/y/c;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
