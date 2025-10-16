.class public Lcom/emsportal/express/activity/CalculateFreightActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/express/activity/CalculateFreightActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/emsportal/express/activity/CalculateFreightActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/CalculateFreightActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity$a;->c:Lcom/emsportal/express/activity/CalculateFreightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/emsportal/express/activity/CalculateFreightActivity$a;->c:Lcom/emsportal/express/activity/CalculateFreightActivity;

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p1, Lcom/emsportal/express/activity/CalculateFreightActivity;->k:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/emsportal/express/activity/CalculateFreightActivity;->k:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    .line 2
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
