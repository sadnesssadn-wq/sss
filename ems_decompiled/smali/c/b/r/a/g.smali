.class public final synthetic Lc/b/r/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/r/a/g;->c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lc/b/r/a/g;->c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 1
    :goto_0
    iget-object p1, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->E:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
