.class public Lc/b/m/c/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/m/c/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/m/c/a;


# direct methods
.method public constructor <init>(Lc/b/m/c/a;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/c/a$a;->c:Lc/b/m/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/b/m/c/a$a;->c:Lc/b/m/c/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const-class v0, Lcom/emsportal/activity/ScannerActivity;

    invoke-static {p1, v0}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method
