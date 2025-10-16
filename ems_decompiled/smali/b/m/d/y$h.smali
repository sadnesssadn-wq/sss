.class public Lb/m/d/y$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/d/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/m/d/y;->b(Lb/m/d/v;Lb/m/d/s;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lb/m/d/y;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p2, p0, Lb/m/d/y$h;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/m/d/y;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iget-object p1, p0, Lb/m/d/y$h;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
