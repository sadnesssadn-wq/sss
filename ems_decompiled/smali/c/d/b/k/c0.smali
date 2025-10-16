.class public Lc/d/b/k/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/r/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/d/b/r/b<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Lc/d/b/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/b/r/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile b:Lc/d/b/r/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/b/r/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/d/b/r/a;Lc/d/b/r/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/b/r/a<",
            "TT;>;",
            "Lc/d/b/r/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/k/c0;->a:Lc/d/b/r/a;

    iput-object p2, p0, Lc/d/b/k/c0;->b:Lc/d/b/r/b;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/b/k/c0;->b:Lc/d/b/r/b;

    invoke-interface {v0}, Lc/d/b/r/b;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
