.class public Lcom/emsportal/activity/SelectPlaceManualActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# static fields
.field public static final synthetic h:I


# instance fields
.field public c:Landroid/widget/AutoCompleteTextView;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/Button;

.field public f:Lc/b/i/h;

.field public g:Lcom/emsportal/model/PlaceManual;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b004f

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/activity/SelectPlaceManualActivity;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/emsportal/activity/SelectPlaceManualActivity;->g:Lcom/emsportal/model/PlaceManual;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const p1, 0x7f10026d

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/emsportal/activity/SelectPlaceManualActivity;->d:Landroid/widget/EditText;

    invoke-static {p1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0x7f10024e

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/emsportal/activity/SelectPlaceManualActivity;->g:Lcom/emsportal/model/PlaceManual;

    invoke-virtual {v0, p1}, Lcom/emsportal/model/PlaceManual;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/emsportal/activity/SelectPlaceManualActivity;->g:Lcom/emsportal/model/PlaceManual;

    const-string v2, "KEY_PLACE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x144

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/activity/SelectPlaceManualActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1
    new-instance v0, Lc/b/i/h;

    invoke-direct {v0, p0}, Lc/b/i/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/emsportal/activity/SelectPlaceManualActivity;->f:Lc/b/i/h;

    iget-object v1, p0, Lcom/emsportal/activity/SelectPlaceManualActivity;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/emsportal/activity/SelectPlaceManualActivity;->c:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v0, p0, Lcom/emsportal/activity/SelectPlaceManualActivity;->c:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lc/b/h/a;

    invoke-direct {v1, p0}, Lc/b/h/a;-><init>(Lcom/emsportal/activity/SelectPlaceManualActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f1003ae

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f0804b6

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/emsportal/activity/SelectPlaceManualActivity;->c:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/activity/SelectPlaceManualActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f080078

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/emsportal/activity/SelectPlaceManualActivity;->e:Landroid/widget/Button;

    return-void
.end method
