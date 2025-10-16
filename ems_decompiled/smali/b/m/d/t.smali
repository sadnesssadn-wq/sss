.class public Lb/m/d/t;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb/m/d/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/m/d/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/m/d/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/m/d/v<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/m/d/t;->a:Lb/m/d/v;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/m/d/t;->a:Lb/m/d/v;

    iget-object v0, v0, Lb/m/d/v;->f:Lb/m/d/y;

    invoke-virtual {v0}, Lb/m/d/y;->W()V

    return-void
.end method
