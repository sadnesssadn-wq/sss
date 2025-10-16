.class public Lc/b/h/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/activity/SelectWardActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/SelectWardActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/h/q;->c:Lcom/emsportal/activity/SelectWardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 3

    iget-object v0, p0, Lc/b/h/q;->c:Lcom/emsportal/activity/SelectWardActivity;

    .line 1
    iget v1, v0, Lcom/emsportal/activity/SelectWardActivity;->l:I

    const/16 v2, 0x1d4

    if-ne v1, v2, :cond_0

    .line 2
    const-class v1, Lcom/emsportal/user/activity/CreateStoreActivity;

    goto :goto_0

    :cond_0
    const/16 v2, 0x1e6

    if-ne v1, v2, :cond_1

    const-class v1, Lcom/emsportal/activity/SuggestAddressActivity;

    :goto_0
    invoke-static {v0, p1, v1}, Lcom/emsportal/activity/SelectWardActivity;->v(Lcom/emsportal/activity/SelectWardActivity;ILjava/lang/Class;)V

    :cond_1
    return-void
.end method
