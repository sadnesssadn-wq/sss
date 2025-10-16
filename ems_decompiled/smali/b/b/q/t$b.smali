.class public Lb/b/q/t$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/q/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic c:Lb/b/q/t;


# direct methods
.method public constructor <init>(Lb/b/q/t;)V
    .locals 0

    iput-object p1, p0, Lb/b/q/t$b;->c:Lb/b/q/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/b/q/t$b;->c:Lb/b/q/t;

    const/4 v1, 0x0

    iput-object v1, v0, Lb/b/q/t;->o:Lb/b/q/t$b;

    invoke-virtual {v0}, Lb/b/q/t;->drawableStateChanged()V

    return-void
.end method
