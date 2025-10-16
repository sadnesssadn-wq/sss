.class public Lb/r/d/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/r/d/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/d/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/r/d/d$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/r/d/m;


# direct methods
.method public constructor <init>(Lb/r/d/m;)V
    .locals 0

    iput-object p1, p0, Lb/r/d/m$a;->a:Lb/r/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/r/d/m$a;->a:Lb/r/d/m;

    invoke-virtual {v0, p1, p2}, Lb/r/d/m;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
