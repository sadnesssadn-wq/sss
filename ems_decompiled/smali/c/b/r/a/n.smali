.class public final synthetic Lc/b/r/a/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/international/activity/CreateParcelBatchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/r/a/n;->c:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lc/b/r/a/n;->c:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 1
    :goto_0
    iget-object v1, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->E:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p2, :cond_1

    iget-object p1, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->I:Lcom/emsportal/widget/CurrencyEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
