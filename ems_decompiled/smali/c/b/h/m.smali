.class public Lc/b/h/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/activity/SelectDistrictActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/SelectDistrictActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/h/m;->c:Lcom/emsportal/activity/SelectDistrictActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 3

    iget-object v0, p0, Lc/b/h/m;->c:Lcom/emsportal/activity/SelectDistrictActivity;

    .line 1
    iget v1, v0, Lcom/emsportal/activity/SelectDistrictActivity;->m:I

    const/16 v2, 0x216

    if-ne v1, v2, :cond_0

    .line 2
    const-class v1, Lcom/emsportal/activity/SelectPostalActivity;

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/emsportal/activity/SelectDistrictActivity;->v(Lcom/emsportal/activity/SelectDistrictActivity;Ljava/lang/Class;I)V

    goto :goto_2

    :cond_0
    const/16 v2, 0x1d4

    if-ne v1, v2, :cond_1

    :goto_1
    invoke-static {v0, p1}, Lcom/emsportal/activity/SelectDistrictActivity;->w(Lcom/emsportal/activity/SelectDistrictActivity;I)V

    goto :goto_2

    :cond_1
    const/16 v2, 0x3bd

    if-ne v1, v2, :cond_2

    const-class v1, Lcom/emsportal/express/activity/CalculateFreightActivity;

    goto :goto_0

    :cond_2
    const/16 v2, 0x1e1

    if-ne v1, v2, :cond_3

    const-class v1, Lcom/emsportal/activity/SuggestAddressActivity;

    goto :goto_0

    :cond_3
    const/16 v2, 0x1e6

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method
