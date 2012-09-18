
.method public isInSecurityTimeoutPeriod()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isInSecurityTimeoutPeriod()Z

    move-result v0

    return v0
.end method

.method public isScreenTurnedOn()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isScreenTurnedOn()Z

    move-result v0

    return v0
.end method
