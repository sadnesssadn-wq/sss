.class public Lc/d/c/w/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/c/w/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/c/w/s<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/d/c/w/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Lc/d/c/w/r;

    invoke-direct {v0}, Lc/d/c/w/r;-><init>()V

    return-object v0
.end method
