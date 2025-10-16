.class public Lb/r/d/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/r/d/g;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lb/r/d/g;


# direct methods
.method public constructor <init>(Lb/r/d/g;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lb/r/d/g$b;->d:Lb/r/d/g;

    iput-object p2, p0, Lb/r/d/g$b;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lb/r/d/g$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/r/d/g$i;

    iget-object v2, p0, Lb/r/d/g$b;->d:Lb/r/d/g;

    invoke-virtual {v2, v1}, Lb/r/d/g;->animateChangeImpl(Lb/r/d/g$i;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/r/d/g$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lb/r/d/g$b;->d:Lb/r/d/g;

    iget-object v0, v0, Lb/r/d/g;->mChangesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/r/d/g$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
