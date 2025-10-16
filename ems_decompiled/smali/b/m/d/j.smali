.class public Lb/m/d/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lb/m/d/c;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p2, p0, Lb/m/d/j;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/m/d/j;->c:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lb/m/d/p0;->p(Ljava/util/ArrayList;I)V

    return-void
.end method
