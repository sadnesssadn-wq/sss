.class public Lcom/emsportal/international/activity/CreateInternationalParcelActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/international/activity/CreateInternationalParcelActivity$a;->c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateInternationalParcelActivity$a;->c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->Q:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/r/c/f;

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateInternationalParcelActivity$a;->c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 3
    iput-object p1, v0, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->Z:Lc/b/r/c/f;

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_ITEM_INTERNATIONAL"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget p1, v0, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->W:I

    const-string v2, "SERVICE_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-class p1, Lcom/emsportal/international/activity/UpdateItemActivity;

    const/16 v2, 0x5fe

    invoke-static {v0, p1, v2, v1}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    return-void
.end method
